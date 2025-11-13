#[cfg(target_arch = "x86_64")]
use std::arch::x86_64::*;

#[cfg(target_arch = "x86")]
use std::arch::x86::*;

const MAX_DIGITS: usize = 18 + 2;

#[rustfmt::skip]
macro_rules! repeat_middle {
    ($i:ident, $body:block) => {
        #[allow(non_upper_case_globals)]
        {
            { const $i: usize = 0; $body }
            { const $i: usize = 1; $body }
            { const $i: usize = 2; $body }
            { const $i: usize = 3; $body }
            { const $i: usize = 4; $body }
            { const $i: usize = 5; $body }
            { const $i: usize = 6; $body }
            { const $i: usize = 7; $body }
            { const $i: usize = 8; $body }
            { const $i: usize = 9; $body }
            { const $i: usize = 10; $body }
            { const $i: usize = 11; $body }
            { const $i: usize = 12; $body }
            { const $i: usize = 13; $body }
            { const $i: usize = 14; $body }
            { const $i: usize = 15; $body }
            { const $i: usize = 16; $body }
            { const $i: usize = 17; $body }
        }
    };
}

fn write_stdout(data: &[u8]) {
    #[cfg(all(target_arch = "x86_64", target_os = "linux"))]
    unsafe {
        #[repr(align(16))]
        struct Align16<T>(T);

        static DUMMY: Align16<[u8; 16]> = Align16([0; 16]);
        let mut result: u64 = 0;
        core::arch::asm!(
            "mov rax, {SYSCALL_WRITE}",
            "mov rdi, {STDOUT}",
            "mov rsi, {ptr}",
            "mov rdx, {len}",
            "syscall",
            SYSCALL_WRITE = const 1u64,
            STDOUT = const 1u64,
            ptr = in(reg) data.as_ptr(),
            len = in(reg) data.len(),
            out("rax") result,
            out("rdi") _,
            out("rsi") _,
            out("rdx") _,
            out("rcx") _,
            out("r8") _,
            out("r9") _,
            out("r10") _,
            out("r11") _,
            options(nostack),
        );
        // if there is an error, make an invalid load to terminate the program
        {
            DUMMY
                .0
                .as_ptr()
                .byte_add((result >> 63) as usize)
                .cast::<__m128i>()
                .read_volatile()
        };
    }
    #[cfg(not(all(target_arch = "x86_64", target_os = "linux")))]
    {
        use std::io::Write;
        let mut stdout = std::io::stdout();
        stdout.write_all(data).unwrap();
    }
}

fn fizzbuzz_arbitrary() -> ! {
    // leave some space for a fixed length copy
    const COPY_LENGTH: usize = (MAX_DIGITS + 1).next_multiple_of(4);
    let mut state = [b'0'; MAX_DIGITS + 1 + COPY_LENGTH];
    state[MAX_DIGITS] = b'\n';
    let mut start_digit = MAX_DIGITS as u8 - 1;

    let mut buffer = [b'0'; 16384];
    let mut buffer_ptr = 0;

    macro_rules! write {
        (fizz) => {
            unsafe {
                buffer
                    .as_mut_ptr()
                    .add(buffer_ptr)
                    .cast::<u64>()
                    .write_unaligned(u64::from_ne_bytes(*b"Fizz\n\0\0\0"));
                buffer_ptr += 5;
            }
        };
        (buzz) => {
            unsafe {
                buffer
                    .as_mut_ptr()
                    .add(buffer_ptr)
                    .cast::<u64>()
                    .write_unaligned(u64::from_ne_bytes(*b"Buzz\n\0\0\0"));
                buffer_ptr += 5;
            }
        };
        (fizzbuzz) => {
            unsafe {
                buffer
                    .as_mut_ptr()
                    .add(buffer_ptr)
                    .cast::<u64>()
                    .write_unaligned(u64::from_ne_bytes(*b"FizzBuzz"));
                buffer_ptr += 8;
                buffer[buffer_ptr] = b'\n';
                buffer_ptr += 1;
            }
        };
        (number) => {{
            unsafe {
                core::ptr::copy_nonoverlapping(
                    state.as_ptr().add(start_digit as usize),
                    buffer.as_mut_ptr().add(buffer_ptr),
                    COPY_LENGTH,
                );
                buffer_ptr += (MAX_DIGITS as u8 - start_digit + 1) as usize;
            }
        }};
    }

    #[inline(always)]
    fn increment_tenth(state: &mut [u8; MAX_DIGITS + 1 + COPY_LENGTH], start_digit: &mut u8) {
        let mut start_digit_v = unsafe { _mm_set1_epi32(*start_digit as i32) };
        let mut update_ptr_v = [0i32, 0i32, 0i32, 0i32];
        state[MAX_DIGITS - 1] = b'0';
        let mut carry = 1u8;
        repeat_middle!(i, {
            const PTR: usize = MAX_DIGITS - 2 - i;
            let update_ptr = PTR as u8 | carry.wrapping_sub(1);
            update_ptr_v[i % 4] = update_ptr as i32;
            if i % 4 == 3 {
                // i is constant, this is not a branch
                start_digit_v = unsafe {
                    _mm_min_epu8(start_digit_v, _mm_loadu_si128(update_ptr_v.as_ptr().cast()))
                };
            }
            state[PTR] = state[PTR] + carry;
            carry = (state[PTR] + (64 - b'0' - 10)) >> 6;
            state[PTR] -= carry * 10;
        });
        state[0] += carry;
        unsafe {
            let mut cross = _mm_shuffle_epi32(start_digit_v, 0b0100_1110);
            start_digit_v = _mm_min_epu8(start_digit_v, cross);
            cross = _mm_shuffle_epi32(start_digit_v, 0b1011_0001);
            start_digit_v = _mm_min_epu8(start_digit_v, cross);
        }
        *start_digit = unsafe { _mm_extract_epi16(start_digit_v, 0) as u8 };
    }

    loop {
        state[MAX_DIGITS - 1] = b'1';
        write!(number); // 1
        state[MAX_DIGITS - 1] = b'2';
        write!(number); // 2
        write!(fizz); // 3
        state[MAX_DIGITS - 1] = b'4';
        write!(number); // 4
        write!(buzz); // 5
        write!(fizz); // 6
        state[MAX_DIGITS - 1] = b'7';
        write!(number); // 7
        state[MAX_DIGITS - 1] = b'8';
        write!(number); // 8
        write!(fizz); // 9
        increment_tenth(&mut state, &mut start_digit);
        write!(buzz); // 10
        state[MAX_DIGITS - 1] = b'1';
        write!(number); // 11
        write!(fizz); // 12
        state[MAX_DIGITS - 1] = b'3';
        write!(number); // 13
        state[MAX_DIGITS - 1] = b'4';
        write!(number); // 14
        write!(fizzbuzz); // 15
        state[MAX_DIGITS - 1] = b'6';
        write!(number); // 1
        state[MAX_DIGITS - 1] = b'7';
        write!(number); // 2
        write!(fizz); // 3
        state[MAX_DIGITS - 1] = b'9';
        write!(number); // 4
        increment_tenth(&mut state, &mut start_digit);
        write!(buzz); // 5
        write!(fizz); // 6
        state[MAX_DIGITS - 1] = b'2';
        write!(number); // 7
        state[MAX_DIGITS - 1] = b'3';
        write!(number); // 8
        write!(fizz); // 9
        write!(buzz); // 10
        state[MAX_DIGITS - 1] = b'6';
        write!(number); // 11
        write!(fizz); // 12
        state[MAX_DIGITS - 1] = b'8';
        write!(number); // 13
        state[MAX_DIGITS - 1] = b'9';
        write!(number); // 14
        increment_tenth(&mut state, &mut start_digit);
        write!(fizzbuzz); // 15

        unsafe {
            write_stdout(core::slice::from_raw_parts(buffer.as_ptr(), buffer_ptr));
        }
        buffer_ptr = 0;
    }
}

fn main() {
    fizzbuzz_arbitrary();
}

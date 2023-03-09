extern crate rand;
use std::env;

fn main() {

    let mut rand_num = 0;

    if env::args().len() != 2 {
        rand_num = generate_random_number(0);
    } else {
        let args: Vec<String> = env::args().collect();
        let num = &args[1];
        let num: u32 = num.parse().unwrap();
        rand_num = generate_random_number(num);
    }

    println!("{}", rand_num);
}

pub fn generate_random_number(range: u32) -> u32 {
    let mut x: u32 = 0;

    if range == 0 {
        x = rand::random();
    }
    else {
        x = rand::random::<u32>() % range;
        if x == 0 {
            x = 1;
        }
    }
    return x;
}

use thin_vec::ThinVec;

fn main() {
    println!("Supply-chain evaluation demo");

    let mut vec = ThinVec::<u32>::new();

    vec.push(54u32);
    vec.push(74u32);
    vec.push(90u32);
    vec.push(2014u32);

    println!("ThinVec contents {vec:?}");
}

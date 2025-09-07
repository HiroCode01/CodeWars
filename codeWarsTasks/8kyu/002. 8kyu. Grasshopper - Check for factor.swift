func checkForFactor() {
    let factor = 1
    let base = 10
    let check = checkForFactor(base, factor)
    
    func checkForFactor(_ base: Int, _ factor: Int) -> Bool {
        guard factor != 0 && base % factor == 0 else {
            return false
        }
        return true
    }
    print(check)
}

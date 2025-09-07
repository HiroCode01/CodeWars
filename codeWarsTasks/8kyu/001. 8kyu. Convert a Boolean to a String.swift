func booleanToStringConverter() {
    let bool = false
    let a = booleanToString(bool)
    
    func booleanToString(_ b: Bool) -> String {
       return String(b)
    }
    print(a, type(of: a))
}

import Foundation

@main
public struct PasswordValidation {

    public static func main() {
        let validation = PasswordValidation()
        let password = "123456"

        if validation.isValid(password: password) {

            print("valid password")
        } else {

            print("invalid password")
        }
    }

    func isValid(password: String) -> Bool {
        let regex = "^[0-9]{6}$"
        let validatePass = NSPredicate(format: "SELF MATCHES %@", regex)
        return validatePass.evaluate(with: password)
    }
}

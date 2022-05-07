
import Module
import ModelInterfaces

public protocol ProfileRouteMap: AnyObject {
    func rootAccountModule(profile: ProfileModelProtocol) -> ProfileModule
    func someAccountModule(profile: ProfileModelProtocol) -> ProfileModule
}

public protocol ProfileModuleInput: AnyObject {
    
}

public protocol ProfileModuleOutput: AnyObject {
    func ignoreProfile()
    
    func denyProfile()
    
    func acceptProfile()
    
    func requestProfile()
}

public typealias ProfileModule = Module<ProfileModuleInput, ProfileModuleOutput>

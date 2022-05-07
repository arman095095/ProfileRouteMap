
import Module
import ModelInterfaces

public protocol ProfileRouteMap: AnyObject {
    func rootAccountModule(profile: ProfileModelProtocol) -> ProfileModule
    func someAccountModule(profile: ProfileModelProtocol) -> ProfileModule
}

public protocol ProfileModuleInput: AnyObject {
    
}

public protocol ProfileModuleOutput: AnyObject {
    func ignoredProfile()
    
    func deniedProfile()
    
    func acceptedProfile()
    
    func requestedProfile()
}

public typealias ProfileModule = Module<ProfileModuleInput, ProfileModuleOutput>

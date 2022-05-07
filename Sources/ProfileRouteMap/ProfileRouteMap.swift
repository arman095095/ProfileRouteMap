
import Module
import ModelInterfaces
import Foundation

public protocol ProfileRouteMap: AnyObject {
    func rootAccountModule(profile: ProfileModelProtocol) -> ProfileModule
    func someAccountModule(profile: ProfileModelProtocol) -> ProfileModule
}

public protocol ProfileModuleInput: AnyObject {
    
}

@objc
public protocol ProfileModuleOutput: AnyObject {
    @objc optional func ignoredProfile()
    
    @objc optional func deniedProfile()
    
    @objc optional func acceptedProfile()
    
    @objc optional func requestedProfile()
}

public typealias ProfileModule = Module<ProfileModuleInput, ProfileModuleOutput>

//
//  AppDelegate.swift
//  AppLifeCycle
//
//  Created by 샤인 on 2017. 3. 31..
//  Copyright © 2017년 샤인. All rights reserved.
//

import UIKit

@UIApplicationMain //여기가 첫시작이다 main()
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool { //제일먼저 실행된다 새로 생겼는데 아직까지는 어디에 쓰이는지 모르겠다
        print("willFinishLaunchingWithOptions") //willFinishLaunching 시작을 마칠것이다
        return true
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool { //앱이 시작될때 윌피니쉬런칭다음으로 호출되는 것 초기화같은 개념인것같다
        // Override point for customization after application launch. //앱이 시작될때 제일 먼저 실행시킬 것들을 담는것같다
        print("didFinishLaunchingWithOptions") //didFinishLaunching 시작을 마쳣다 /"디드피니슁런칭옵션은 앱이 실행될때 딱 한번만 호출된다
        //window?.rootViewControllar = ViewControoller() 예전에 이런 명령이 있었는데 윈도우에 뷰컨트롤러를 띄워달라는것이다 지금은 스토리보드에서 알아서 해주기때문에 생략이 되었다
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        print("applicationWillResignActive") //WillResignActive 액티브를 사임한다 비활성화 비활성화된다 앱을 내리면서 제일먼저 실행되는 것이다 앱이 비활성화 될것같을때 미리 호출을 해주는데 예를 들어 전화가 오거나 홈버튼을 누를 때 바로 먼저 호출된다 [게임 일시중지 같은 기능]
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        //응용 프로그램이 활성 상태에서 비활성 상태로 바뀌려고 할 때 전송됩니다. 이는 특정 유형의 일시적인 중단 (예 : 전화 통화 또는 SMS 메시지) 또는 사용자가 응용 프로그램을 종료하고 백그라운드 상태로의 전환을 시작할 때 발생할 수 있습니다.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        //이 방법을 사용하여 진행중인 작업을 일시 중지하고 타이머를 비활성화하고 그래픽 렌더링 콜백을 무효화하십시오. 게임은이 방법을 사용하여 게임을 일시 중지해야합니다.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("applicationDidEnterBackground") //비활성화될때 호출되는데 예를 들어 문자 같은게 왔을 때 앱이 내려가지않고 위에 조그맣게 떳을때(이 상태도 비활성화상태다) 호출된다 /윌리자인액티브와 다른점은 윌리자인액트브는 아예 창이 내려가는 비활성화 상태이고 디드엔터백그라운드는 창이 내려가지않고 조그맣게 메시지만 위에 뜨는 비활성화 상태이다
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // 이 방법을 사용하여 공유 리소스를 해제하고 사용자 데이터를 저장하고 타이머를 무효화하고 응용 프로그램 상태 정보를 충분히 저장하여 나중에 종료 될 경우를 대비하여 응용 프로그램을 현재 상태로 복원합니다. //리소스를 백그라운드에서 날리지 않는 게임은 바로 시작할까요?라고 뜨고 리소스를 백그라운드에서 날린 게임은 로딩중이라고 뜬다 백그라운드에서 날리지 않는 게임들은 백그라운드에 계속 잡고 쌓이기때문에 폰이 점점 느려진다고 한다 그래서 리소스를 다 해제해주고 포그라운드로 넘어오면서 다 불러오는 작업을 하는게 좋다 (백그라운드에 데이터들이 자꾸 쌓이게되면 랜덤으로 데이터를 지우게 된다고 한다)
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("applicationWillEnterForeground")
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background. //앱을 내렸다가 다시 올릴때 백그라운드에 있던 자료를 다시 릴리즈해올때 사용한다
    }

    func applicationDidBecomeActive(_ application: UIApplication) { //앱이 활성화가 되기 시작하면(디드피니쉬런칭옵션 다음으로) 호출이 된다
        print("applicationDidBecomeActive") //did become Active 활발해졌다 /"디드비컴액티브는 액티브가 될때마다(비활성화 상태에서 다시 활성화될때 예를 들어 홈버튼을 눌러 앱을 내리면 비활성화, 앱을 다시 띄우면 활성화) 여러번 호출된다(이점이 디드피니쉬런칭이랑 다르다)
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface. //만약 어플리케이션이 전에 백그라운드에 있었다면,이게 다시 액티브되면서 사용자 인터페이스를 바꿔야될일이 있다면 여기에 코딩을 해라 예를 들어 게임중 전화가 왔을때(아이폰은 전화가 우선이다) 전화창으로 넘어가게 된다 그리고 전화를 받은 후나 받지않고 다시 게임에 들어갔을때 게임이 바로 시작되지 않고 다시 시작할까요? 라는 메시지를 띄우게 된다 이 기능이 필요할때 DidBecomeActive에 코딩을 해주면된다 //[일시중지된 게임을 다시 시작할때]
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate") //앱이 종료되기 전에 바로 호출된다 전에 이게 호출이되지않고 없어졌던 적이 있다 그때 엔터백그라운드로 대체했었는데 구지 쓸필요 없이 엔터백그라운드를 사용해도 된다
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
 //앱라이프사이클4 06:07

}


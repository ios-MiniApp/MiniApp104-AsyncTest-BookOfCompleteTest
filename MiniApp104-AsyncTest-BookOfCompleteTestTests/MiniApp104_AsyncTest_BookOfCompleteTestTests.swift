//
//  MiniApp104_AsyncTest_BookOfCompleteTestTests.swift
//  MiniApp104-AsyncTest-BookOfCompleteTestTests
//
//  Created by 前田航汰 on 2022/10/01.
//

import XCTest
@testable import MiniApp104_AsyncTest_BookOfCompleteTest

class AsyncTests: XCTestCase {
    func testAsyncString() {

        // 非同期処理の待機と完了を表現するためのインスタンス
        let exp = XCTestExpectation(description: "任意の文字")

        // 非同期処理の関数の呼び出し
        ViewController().asyncString { string in
            XCTAssertEqual(string, "文字列A")
            exp.fulfill() // 期待した処理が行われたとしてマーク
        }

        // 待機を行うXCTestExpectationのインスタンスを指定
        // timeoutで指定した5秒以内にexpのfulfillが呼び出されない場合、 このテストは失敗
        wait(for: [exp], timeout: 5.0)
    }
}

//
//  ListingTestCases.swift
//  AssessmentTests
//
//  Created by Suyog Sawant on 02/12/22.
//

import XCTest
@testable import Assessment

final class ListingTestCases: XCTestCase {

    func testSuccessfulApiResponse() async{
        let viewModel = ListingPageVM()
        await viewModel.fetchProducts()
        print(viewModel.products)
        XCTAssertTrue(viewModel.products.count > 0)
    }
}

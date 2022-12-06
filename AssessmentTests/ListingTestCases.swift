//
//  ListingTestCases.swift
//  AssessmentTests
//
//  Created by Suyog Sawant on 02/12/22.
//

import XCTest
@testable import Assessment

final class ListingTestCases: XCTestCase {
    var apiService = MockApiService()
 
    
    func testSuccessfulApiResponse() async{
        
        let viewModel = ListingPageVM(apiService: apiService)
        await viewModel.fetchProducts()
        sleep(3)
        XCTAssertTrue(viewModel.products.count > 0)
    }
    
    func testcheckforFavouriteProductReturnsTrue() {
        let viewModel = FavouritePageVM()
        let product =  apiService.getProduct()
        let favouriteProduct = FavouriteProducts()
        favouriteProduct.products.append(product)
        let result = viewModel.checkIfFavourite(item: product, storedFavList: favouriteProduct)
        
        XCTAssertEqual(result, "heart.fill")
    }
    
    func testcheckforFavouriteProductReturnsFalse() {
        let viewModel = FavouritePageVM()
        let product =  apiService.getProduct()
        let favouriteProduct = FavouriteProducts()
        let result = viewModel.checkIfFavourite(item: product, storedFavList: favouriteProduct)
        
        XCTAssertEqual(result, "heart")
    }
}

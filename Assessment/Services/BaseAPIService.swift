//
//  BaseAPIService.swift
//  Assessment
//
//  Created by Suyog Sawant on 05/12/22.
//

import Foundation

protocol BaseAPIService {
    func fetchData() async -> Products?
}

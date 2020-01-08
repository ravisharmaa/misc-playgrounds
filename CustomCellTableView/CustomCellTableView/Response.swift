//
//  Response.swift
//  CustomCellTableView
//
//  Created by Ravi Bastola on 6/20/19.
//  Copyright © 2019 Ravi Bastola. All rights reserved.
//

import Foundation

struct Response: Decodable {
    let servers: Server
}

struct Server: Decodable {
    let current_page: Int
    let data: [ServerData]
    let first_page_url: String?
}

struct ServerData: Decodable {
    let hostname: String
    let ipaddress: String
    let customers: [Customer]
    let latest_value: LatestValue
}



struct Customer: Decodable {
    let name: String
    let contact_person :String
    let email: String
}


struct LatestValue: Decodable {
    let systemuptime: String
    let memtotal: Float
    let memfree: Double
    let loadaverage: Float
}

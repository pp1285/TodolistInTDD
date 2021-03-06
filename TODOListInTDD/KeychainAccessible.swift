//
//  KeychainAccessible.swift
//  TODOListInTDD
//
//  Created by pp1285 on 2016/9/21.
//  Copyright © 2016年 EthanChou. All rights reserved.
//

import Foundation

protocol KeychainAccessible {

    func setPassword(password: String,
                     account: String)
    func deletePasswortForAccount(account: String)
    func passwordForAccount(account: String) -> String?

}
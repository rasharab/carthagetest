//
//  TimersUITests.swift
//  TimeTracker
//
//  Created by Chetan M on 16/05/16.
//  Copyright © 2016 Surya Software Systems Pvt. Ltd. All rights reserved.
//

import XCTest

class TabBarUITests: XCTestCase {

    let app = XCUIApplication()
    var timersButton: XCUIElement!
    var clientsButton: XCUIElement!
    var remindersButton: XCUIElement!
    var triggersButton: XCUIElement!
    var settingsButtons: XCUIElement!

    override func setUp() {
        app.launch()
        timersButton = app.tabBars.buttons["Timers"]
        clientsButton = app.tabBars.buttons["Clients"]
        remindersButton = app.tabBars.buttons["Reminders"]
        triggersButton = app.tabBars.buttons["Triggers"]
        settingsButtons = app.tabBars.buttons["Settings"]

    }

    func testTimersTabButton() {
        app.tabBars.buttons["Timers"].tap()
        XCTAssertEqual(timersButton.label, "Timers")
        XCTAssertTrue(timersButton.exists)
        XCTAssertTrue(timersButton.selected)
        XCTAssertFalse(clientsButton.selected)
        XCTAssertFalse(remindersButton.selected)
        XCTAssertFalse(triggersButton.selected)
        XCTAssertFalse(settingsButtons.selected)
    }

    func testClientsTabButton() {
        app.tabBars.buttons["Clients"].tap()
        XCTAssertEqual(clientsButton.label, "Clients")
        XCTAssertTrue(clientsButton.exists)
        XCTAssertTrue(clientsButton.selected)
        XCTAssertFalse(timersButton.selected)
        XCTAssertFalse(remindersButton.selected)
        XCTAssertFalse(triggersButton.selected)
        XCTAssertFalse(settingsButtons.selected)
    }

    func testRemindersTabButton() {
        app.tabBars.buttons["Reminders"].tap()
        XCTAssertEqual(remindersButton.label, "Reminders")
        XCTAssertTrue(remindersButton.exists)
        XCTAssertTrue(remindersButton.selected)
        XCTAssertFalse(timersButton.selected)
        XCTAssertFalse(clientsButton.selected)
        XCTAssertFalse(triggersButton.selected)
        XCTAssertFalse(settingsButtons.selected)
    }

    func testTriggersTabButton() {
        app.tabBars.buttons["Triggers"].tap()
        XCTAssertEqual(triggersButton.label, "Triggers")
        XCTAssertTrue(triggersButton.exists)
        XCTAssertTrue(triggersButton.selected)
        XCTAssertFalse(timersButton.selected)
        XCTAssertFalse(clientsButton.selected)
        XCTAssertFalse(remindersButton.selected)
        XCTAssertFalse(settingsButtons.selected)
    }

    func testSettingsTabButton() {
        app.tabBars.buttons["Settings"].tap()
        XCTAssertEqual(settingsButtons.label, "Settings")
        XCTAssertTrue(settingsButtons.exists)
        XCTAssertTrue(settingsButtons.selected)
        XCTAssertFalse(timersButton.selected)
        XCTAssertFalse(clientsButton.selected)
        XCTAssertFalse(remindersButton.selected)
        XCTAssertFalse(triggersButton.selected)
    }
}

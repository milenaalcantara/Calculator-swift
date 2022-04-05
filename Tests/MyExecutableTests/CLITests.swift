//
//  CLITests.swift
//  
//
//  Created by Milena on 22/03/22.
//

import XCTest
import Darwin
@testable import TestPackage

class CLITests: XCTestCase {

    var sut: CLI!

    override func setUpWithError() throws {
        sut = CLI()
        // sut.user = User(name: "Teste user")
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testAskForIntReturnsAnInt() throws {
        //When
        sut.inputManager = InputManager(type: .mock, values: ["s", "a", "1"])

        //Then
        let output = sut.askForInt(question: "Digite um Int")

        XCTAssertEqual(output, 1)
    }

    func testAskForDoubleReturnsAnDouble() throws {
        //When
        sut.inputManager = InputManager(type: .mock, values: ["s", "a", "1"])

        //Then
        let output = sut.askForDouble(question: "Digite um double")

        XCTAssertEqual(output, 0.0)
    }

    // func test_whenMarkedDone_taskIsNotOutstanding() {
    //     //Given
    //     sut.user?.addProject(project: Project(name: "Teste"))
    //     sut.user?.projects[0].addTask(Task(name: "Teste Task"))

    //     //When
    //     sut.inputManager = InputManager(type: .mock, values: ["1", "1"])
    //     sut.markTaskAsDone()

    //     //Then
    //     XCTAssertEqual(sut.user!.outstandingTasks.count, 0)
    // }

    // func test_addNewTaskInvalidProject_returnsMessage() {
    //     //Given
    //     sut.user?.addProject(project: Project(name: "Teste"))

    //     //When
    //     sut.inputManager = InputManager(type: .mock, values: ["2"])
    //     sut.addNewTask()

    //     let output = sut.user!.outstandingTasks.count

    //     XCTAssertEqual(output, 1)
    // }

    // func test_addNewTask_increasesOutstandingTasks() {
    //     //Given
    //     sut.user?.addProject(project: Project(name: "Teste"))

    //     //When
    //     sut.inputManager = InputManager(type: .mock, values: ["1", "Task Teste", "2", "Teste"])
    //     sut.addNewTask()

    //     //Then
    //     XCTAssertEqual(sut.user!.outstandingTasks.count, 1)
    // }

    // func test_createProject_addsNewProjectToUser() {
    //     //Given
    //     sut.inputManager = InputManager(type: .mock, values: ["Teste Project"])

    //     //When
    //     sut.addNewProject()

    //     //Then
    //     XCTAssertEqual(sut.user!.projects.count, 1)
    // }

    // func test_whenProjectsEmpty_listProjectReturnsEmptyMessage() {
    //     //When
    //     let output = sut.listAllProjects()
    //     //Then
    //     let expected = "Você não tem projetos cadastrados\n"
    //     XCTAssertEqual(output, expected)
    // }

    // func test_whenHasProjectWithNoTask_printProjectName() {
    //     //Given
    //     sut.user!.addProject(project: Project(name: "Teste"))
    //     //When
    //     let output = sut.listAllProjects()
    //     //Then
    //     let expected = "Esses são seus projetos\n1 - Teste\n"

    //     XCTAssertEqual(output, expected)
    // }

    // func test_whenHasProjectsWithTask_printProjectAndOutstandingTasks() {
    //     //Given
    //     sut.user?.addProject(project: Project(name: "Teste"))
    //     let newTask = Task(name: "Teste Task")
    //     sut.user?.projects[0].addTask(newTask)
    //     //When
    //     let output = sut.listAllProjects()
    //     //Then
    //     let expected = "Esses são seus projetos\n1 - Teste\n" + "Nesse projeto você tem essas tasks ainda em andamento:\n" + newTask.description + "\n"

    //     XCTAssertEqual(output, expected)
    // }
}
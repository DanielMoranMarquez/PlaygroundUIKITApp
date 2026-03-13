//
//  ContentView.swift
//  PlaygroundUIKIT
//
//  Created by Daniel Morán on 11/11/24.
//

import SwiftUI
import CoreData
import UIKit

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            ControllerRepresentable()
            Spacer()
        }
        //        .ignoresSafeArea()
    }
}

struct ControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIViewController


    func makeUIViewController(context: Context) -> UIViewController {
        return ExampleViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // Updates the state of the specified view controller with new information from SwiftUI.
    }
}

#Preview {
    ContentView()
}


// -----------------------------------------------------------
// INICIO DEL PLAYGROUND
// -----------------------------------------------------------

class ExampleViewController: UIViewController {
    var containerView: UIView!
    var label: UILabel!

    required init() {
        super.init(nibName: nil, bundle: nil)
        setUp()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setUp() {
        containerView = UIView()
        containerView.backgroundColor = .purple
        containerView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(containerView)

        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: view.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        label = UILabel()
        label.text = "Hello, World!"
        label.translatesAutoresizingMaskIntoConstraints = false

        containerView.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
        ])


    }
}

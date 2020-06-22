//
//  TopicDetailViewModel.swift
//  DiscourseClient
//
//  Created by Roberto Garrido on 08/02/2020.
//  Copyright © 2020 Roberto Garrido. All rights reserved.
//

import Foundation

/// Delegate que usaremos para comunicar eventos relativos a navegación, al coordinator correspondiente
protocol TopicDetailCoordinatorDelegate: class {
    func topicDetailBackButtonTapped()
    func topicSuccessfullyDeleted()
}

/// Delegate para comunicar a la vista cosas relacionadas con UI
protocol TopicDetailViewDelegate: class {
    func topicDetailFetched()
    func errorFetchingTopicDetail()
    func errorDeletingTopic()
}

class TopicDetailViewModel {
    var labelTopicIDText: String?
    var labelTopicNameText: String?
    var labelTopicNumPostsText: String?
    var showDeleteTopicButton = false

    weak var viewDelegate: TopicDetailViewDelegate?
    weak var coordinatorDelegate: TopicDetailCoordinatorDelegate?
    let topicDetailDataManager: TopicDetailDataManager
    let topicID: Int

    init(topicID: Int, topicDetailDataManager: TopicDetailDataManager) {
        self.topicID = topicID
        self.topicDetailDataManager = topicDetailDataManager
    }

    func viewDidLoad() {
        topicDetailDataManager.fetchTopic(id: topicID) { [weak self] (result) in
            switch result {
            case .success(let singleTopicResponse):
                
                guard let singleTopicResponse = singleTopicResponse else { return }
                
                self?.labelTopicIDText = String(singleTopicResponse.id)
                self?.labelTopicNameText = singleTopicResponse.title
                self?.labelTopicNumPostsText = String(singleTopicResponse.postsCount)
                self?.showDeleteTopicButton = (singleTopicResponse.details.canDelete ?? false)
            
                self?.viewDelegate?.topicDetailFetched()
            case .failure(let error):
                print(error)
            }
        }
    }

    func backButtonTapped() {
        coordinatorDelegate?.topicDetailBackButtonTapped()
    }

    func deleteButtonTapped() {
        topicDetailDataManager.deleteTopic(id: topicID) { [weak self] (result) in
            switch result {
            case .success:
                self?.coordinatorDelegate?.topicSuccessfullyDeleted()
            case .failure:
                self?.viewDelegate?.errorDeletingTopic()
            }
        }
    }

}

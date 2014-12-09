Feature: git-hack on the main branch without open changes

  Background:
    Given the following commit exists in my repository
      | BRANCH | LOCATION | MESSAGE     | FILE NAME |
      | main   | remote   | main_commit | main_file |
    And I am on the main branch
    When I run `git hack feature`


  Scenario: result
    Then it runs the Git commands
      | BRANCH | COMMAND                      |
      | main   | git fetch --prune            |
      | main   | git rebase origin/main       |
      | main   | git checkout -b feature main |
    And I end up on the "feature" branch
    And the branch "feature" has not been pushed to the repository
    And I have the following commits
      | BRANCH  | LOCATION         | MESSAGE     | FILES     |
      | main    | local and remote | main_commit | main_file |
      | feature | local            | main_commit | main_file |
    And now I have the following committed files
      | BRANCH  | FILES     |
      | main    | main_file |
      | feature | main_file |

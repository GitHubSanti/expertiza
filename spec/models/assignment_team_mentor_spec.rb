describe AssignmentTeamMentor do
    let(:assignment_team_mentor)do
      AssignmentTeamMentor.new id: 1, assignment_team_id:1
    end

    let(:team) { build(:assignment_team, id: 1, parent_id: 1) }
    let(:team2) { build(:assignment_team, id: 2) }
    let(:user) {build( id: 3, role_id: 2)}
    let(:user1) { build(:user, id: 1, name: 'nonmentor')}
    let(:user2) {build(:user, id: 2, name: 'mentor')}
    #let(:participant) { build(:participant, id: 1, can_mentor: true) }
    #let(:participant2) { build(:participant, id: 2, can_mentor: false) }
    let(:assignment) { build(:assignment, id: 1, name: 'with mentor')}
    #let(:assignmentparticipant) {build(:assi)}
    #let(:assignment2) { build(:assignment, id: 2, name: 'without mentors', participants: [participant2], teams: [team2]) }

    let(:participant2) {build(:participant, id: 2,  can_mentor: false)}

    describe '#assignMentor' do
        context 'when no participant mentors have been added to an assignment,' do
            it 'an error is raised' do
                allow(User).to receive(:create).with(name: 'nonmentor', id: 1)#.and_return(student)
                #p user3.get_user_list
                #allow(AssignmentParticipant).to receive(:find_by).with(parent_id: 1, user_id: 1).and_return(nil)
                allow(AssignmentParticipant).to receive(:create).with(name: 'nonmentor', parent_id: 1, user_id: 1, permission_granted: 0,
                                                                      can_submit: true, can_review: true, can_take_quiz: false, can_mentor: false)#.and_return(participant)
                assignment.add_participant('nonmentor', nil, nil, nil, false)
                expect {assignment_team_mentor.assignMentor(team[:parent_id])}.to raise_error('No participant mentors have been added to this assignment. Unable to assign mentor to latest team created.')
            end
        end
        context 'when participant mentors are added into an assignment' do

            it 'returns list of potential mentors' do
                #expect(assignment.participant).to be.(participant)
                #allow(assignment).to receive(:participant2)
                #expect {assignment_team_mentor.assignMentor(team[:parent_id])}.to eq.(2)
            end
            it 'assigns assignment_team_mentor_id to mentor_id with least amount of mentor assignments' do
                assignment.add_participant('mentor', nil, nil, nil, true)
                p User.get_user_list
                assignment_team_mentor.assignMentor(team[:parent_id])
                expect.assignment_team_mentor.assignment_team_mentor_id.to eq(2)
            end
        end
        
    end


end








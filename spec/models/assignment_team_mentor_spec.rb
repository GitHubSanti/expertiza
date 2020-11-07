describe AssignmentTeamMentor do
    let(:team_without_submitted_hyperlinks) { build(:assignment_team, submitted_hyperlinks: "") }
    let(:team) { build(:assignment_team, id: 1, parent_id: 1) }
    let(:assignment) { build(:assignment, id: 1) }
    let(:participant1) { build(:participant, id: 1) }
    let(:participant2) { build(:participant, id: 2) }
    let(:user1) { build(:student, id: 2) }
    let(:user2) { build(:student, id: 3) }


    describe '#assignMentor' do
        context 'when no particpant mentors have been added to an assignment' do
            it 'an error is raised' do

            end
        end
        context 'when particpant mentors are added into an assignment' do
            it 'returns list of potential mentors' do

            end
            it 'assigns assignment_team_mentor_id to mentor_id with least amount of mentor assignments' do

            end
        end
        
    end











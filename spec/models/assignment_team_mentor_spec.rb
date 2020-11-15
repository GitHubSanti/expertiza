describe AssignmentTeamMentor do
    let(:assignment_team_mentor)do
      AssignmentTeamMentor.new id: 1, assignment_team_id:1
    end

    let(:team) { create(:assignment_team, id: 1, parent_id: 1) }
    let(:team2) { create(:assignment_team, id: 2, parent_id: 2) }
    let(:assignment) { create(:assignment, id: 1) }
    let(:participant) { create(:participant, id: 3, parent_id:1, can_mentor: true) }

   # p assignment_team_mentor
  #  p team
   # p team2
   # p assignment
  #  p participant

    describe '#assignMentor' do
        context 'when no participant mentors have been added to an assignment,' do
            it 'an error is raised' do
                expect {assignment_team_mentor.assignMentor(team[:parent_id])}.to raise_error('No participant mentors have been added to this assignment. Unable to assign mentor to latest team created.')
            end
        end
        context 'when participant mentors are added into an assignment' do
            it 'returns list of potential mentors' do

                #allow(assignment).to receive(:participant2)
                #expect {assignment_team_mentor.assignMentor(team[:parent_id])}.to eq.(2)
            end
            it 'assigns assignment_team_mentor_id to mentor_id with least amount of mentor assignments' do
                assignment_team_mentor.assignMentor(team[:parent_id])
                expect.assignment_team_mentor.assignment_team_mentor_id.to eq(participant[:id])
            end
        end
        
    end


end








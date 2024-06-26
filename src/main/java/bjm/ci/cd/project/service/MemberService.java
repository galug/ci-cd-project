package bjm.ci.cd.project.service;

import bjm.ci.cd.project.entity.MemberEntity;
import bjm.ci.cd.project.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class MemberService {
    private final MemberRepository memberRepository;

    public void addMember(String nickname){
        MemberEntity member = new MemberEntity(nickname);
        memberRepository.save(member);
    }

    public List<MemberEntity> getMembers() {
        return memberRepository.findAll();
    }
}

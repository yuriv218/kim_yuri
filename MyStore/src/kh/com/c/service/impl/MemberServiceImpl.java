package kh.com.c.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.com.c.dao.MemberDao;
import kh.com.c.model.MemberDto;
import kh.com.c.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao MemberDao;
 
		@Override
		public boolean addmember(MemberDto mem) throws Exception {
			return MemberDao.addmember(mem);		
		}

		@Override
		public MemberDto login(MemberDto mem) throws Exception {
			
			return MemberDao.login(mem);		
		}
		
		@Override
		public int getID(MemberDto mem) {		
			return MemberDao.getID(mem);		
		}

		@Override
		public MemberDto getInfo(int seq) throws Exception {
			return MemberDao.getInfo(seq);
		}

		@Override
		public void mypageUpdate(MemberDto mem) throws Exception {
			MemberDao.mypageUpdate(mem);
		}

		@Override
		public List<MemberDto> getMemberList() {
			// TODO Auto-generated method stub
		return MemberDao.getMemberList();
		}
		
		
	 
 

		@Override
		public void updateMember(MemberDto mem) {
		 MemberDao.updateMember(mem);
		}

		@Override
		public void deleteMember(String id) throws Exception {
		MemberDao.deleteMember(id);
			
		}

		@Override
		public void updatePassword(MemberDto mem) throws Exception {
			MemberDao.updatePassword(mem);			
		}

		@Override
		public List<MemberDto> getMypageList() {
			return MemberDao.getMypageList();
		}

		@Override
		public String serchImg(String id) {
			return MemberDao.serchImg(id);
		}

		@Override
		public MemberDto getMember(String id) {
			return MemberDao.getMember(id);
		}
 
		///유리

		@Override
		public List<MemberDto> getAddress() {
			return MemberDao.getAddress();
		}

		@Override
		public MemberDto getMapInfor(String address) {
			return MemberDao.getMapInfor(address);
		}

		@Override
		public MemberDto IDgetMember(String id) {
			
			return MemberDao.IDgetMember(id);
		}

	 
		 
		@Override
	      public int idCheck(String id) {
	         return MemberDao.idCheck(id);
	      }

		@Override
		public void checkMail(String id) throws Exception {
			MemberDao.checkMail(id);
				
		}

		 
  }
	 
 

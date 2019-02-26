package kh.com.c.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.com.c.dao.CommunityDao;
import kh.com.c.model.BbsParam;
import kh.com.c.model.ChatDto;
import kh.com.c.model.CommunityDto;
import kh.com.c.service.CommunityService;

@Service
public class CommunityServiceImpl implements CommunityService {

	@Autowired
	CommunityDao CommunityDao;

	@Override
	public List<CommunityDto> getCommunityList(String category) {
		
		return CommunityDao.getCommunityList(category);
	}

	@Override
	public List<CommunityDto> getBestList(String category) {
		
		return CommunityDao.getBestList(category);
	}

	@Override
	public CommunityDto getCommunity(int seq) {
		return CommunityDao.getCommunity(seq);
	}


	@Override
	public void uploadCommunity(CommunityDto dto) {
		CommunityDao.uploadCommunity(dto);
			}

	@Override
	public void reply(CommunityDto bbs) throws Exception {
		CommunityDao.replyCommunityUpdate(bbs);
		CommunityDao.replyCommunityInsert(bbs);
		
	}

	@Override
	public void updateCommunity(CommunityDto bbs) {
		CommunityDao.updateCommunity(bbs);
	}

	@Override
	public void deleteCommunity(int seq) throws Exception {
		CommunityDao.deleteCommunity(seq);
	}

	@Override
	public void readCountCommunity(int seq) {
		CommunityDao.readCountCommunity(seq);
	}

	@Override
	public List<CommunityDto> getBbsPagingList(BbsParam param) {
	
		return CommunityDao.getBbsPagingList(param);
	}

	@Override
	public int getBbsSearch(BbsParam param) {
		
		return CommunityDao.getBbsSearch(param);
	}

	@Override
	public void downcountCommunity(int seq) {
		CommunityDao.downcountCommunity(seq);		
	}

	@Override
	public List<ChatDto> receiveM(String id) {
		return CommunityDao.receiveM(id);
	}

	@Override
	public ChatDto Mdetail(int seq) {
		return CommunityDao.Mdetail(seq);
	}

	@Override
	public void sendM(ChatDto dto) {

		CommunityDao.sendM(dto);
	}







}

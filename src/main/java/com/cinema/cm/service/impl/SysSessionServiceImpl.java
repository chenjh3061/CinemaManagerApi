package com.cinema.cm.service.impl;

import com.cinema.cm.domain.SysBill;
import com.cinema.cm.domain.SysSession;
import com.cinema.cm.domain.vo.SysSessionVo;
import com.cinema.cm.mapper.SysMovieMapper;
import com.cinema.cm.mapper.SysSessionMapper;
import com.cinema.cm.service.SysSessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class SysSessionServiceImpl implements SysSessionService {

    @Autowired
    private SysSessionMapper sysSessionMapper;

    @Autowired
    private SysMovieMapper sysMovieMapper;

    @Override
    public List<SysSession> findByVo(SysSessionVo sysSessionVo) {
        return sysSessionMapper.findByVo(sysSessionVo);
    }

    @Override
    public List<SysSession> findSessionByMovieIdOrHallId(SysSession sysSession) {
        return sysSessionMapper.findSessionByMovieIdOrHallId(sysSession);
    }

    @Override
    public SysSession findSessionById(Long id) {
        return sysSessionMapper.findSessionById(id);
    }

    @Override
    public SysSession findOneSession(Long id) {
        return sysSessionMapper.findOneSession(id);
    }

    @Override
    public int addSession(SysSession sysSession) {
        return sysSessionMapper.addSession(sysSession);
    }

    @Override
    public int updateSession(SysSession sysSession) {
        return sysSessionMapper.updateSession(sysSession);
    }

    @Override
    public int deleteSession(Long[] ids) {
        int rows = 0;
        for (Long id : ids) {
            rows += sysSessionMapper.deleteSession(id);
        }
        return rows;
    }

    @Override
    public List<SysSession> findSessionByMovieId(Long movieId) {
        return sysSessionMapper.findSessionByMovieId(movieId);
    }

    @Override
    public void decreaseSession(SysBill bill) {
        SysSession session = sysSessionMapper.findSessionById(bill.getSessionId());
        sysMovieMapper.decreaseMoney(session.getMovieId(), bill.getBillMoney());


    }
}

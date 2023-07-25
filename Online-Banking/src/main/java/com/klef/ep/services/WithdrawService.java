package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.Withdraw;

@Remote
public interface WithdrawService
{
	public String addWithdraw(Withdraw emp);
}

package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.Deposit;

@Remote
public interface DepositService
{
	public String addDeposit(Deposit emp);
//	public String updateEmployee(Employee emp);
}

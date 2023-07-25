package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.Transfer;

@Remote
public interface TransferService
{
	public String addTransfer(Transfer emp);
}

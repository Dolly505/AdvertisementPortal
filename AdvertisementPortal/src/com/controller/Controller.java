package com.controller;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.dao.Dao;
import com.modal.Feedback;
import com.modal.Query;
import com.modal.RoleType;
import com.modal.AdvType;
import com.modal.AdminUser;
import com.modal.Category;
import com.modal.Feedback;
import com.modal.Publisher;
import com.modal.Location;


@WebServlet("/controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RoleType roleType = new RoleType();
	private AdvType advType = new AdvType();
	private AdminUser adminUser = new AdminUser();
	private Feedback feedback=new Feedback();
	private Publisher publisher=new Publisher();
	private Category category = new Category();
	private Location location = new Location();
	private Query query = new Query();
	private ServletContext context = null;
    private HttpSession session=null;
	
	
	private Dao dao = new Dao();
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	 session=request.getSession();
    	 session.invalidate();
    	 response.sendRedirect(request.getContextPath()+"/wp-content/info/home.jsp");
    	
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter writer=response.getWriter();
       context=request.getServletContext();
		String actionCode = request.getParameter("actionCode");
		if (actionCode.equals("addRole")) {
			String role = request.getParameter("txtRoleType");
			String roleActiveFlag = request.getParameter("roleActiveFlag");
			roleType.setRoleType(role);
			roleType.setRoleActiveFlag(roleActiveFlag);
			int success = dao.saveRoleType(roleType);
			if (success > 0) {
				 writer.println("Inserted");
				response.sendRedirect(request.getContextPath() + "/wp-content/portal/manage-role");
			} else{
			}
		}
		
		else if(actionCode.equals("deleteRole")) {
		  dao.deleteData(Integer.parseInt(request.getParameter("deleteID")));
		  response.sendRedirect(request.getContextPath() + "/wp-content/portal/manage-role");
			
		}
		else if (actionCode.equals("updateRole")) {
		   
		  String temp=request.getParameter("editID");
		   context.setAttribute("editRoleID",temp);
		   response.sendRedirect(request.getContextPath() + "/wp-content/portal/manage-role");
		 
		}
		else if(actionCode.equals("editRole")) {
		
		request.getParameter("editRoleType");
	    request.getParameter("editRoleActiveFlag");
	    request.getParameter("editRoleID");
	    dao.updateRole(Integer.parseInt(request.getParameter("editRoleID")),request.getParameter("editRoleType"),request.getParameter("editRoleActiveFlag"));
	    response.sendRedirect(request.getContextPath() + "/wp-content/portal/manage-role");
		}
		//Advertisement
		else if (actionCode.equals("addAdv")) {
			String adv = request.getParameter("txtAdvType");
			String advActiveFlag = request.getParameter("advActiveFlag");
			advType.setAdvType(adv);
			advType.setAdvActiveFlag(advActiveFlag);
			int success = dao.saveAdvType(advType);
			if (success > 0) {
				response.sendRedirect(request.getContextPath() + "/wp-content/portal/manage-adv");
			} else{

			}
		}
		else if(actionCode.equals("deleteAdv")) {
		  dao.deleteAdvData(Integer.parseInt(request.getParameter("deleteID")));
		  response.sendRedirect(request.getContextPath() + "/wp-content/portal/manage-adv");
			
		}
		else if (actionCode.equals("updateAdv")) {
		   
		  String temp=request.getParameter("editID");
		   context.setAttribute("editAdvID",temp);
		   response.sendRedirect(request.getContextPath() + "/wp-content/portal/manage-adv");
		 
		}
		else if(actionCode.equals("editAdv")) {
		
		request.getParameter("editAdvType");
	    request.getParameter("editAdvActiveFlag");
	    request.getParameter("editAdvID");
	    dao.updateAdv(Integer.parseInt(request.getParameter("editAdvID")),request.getParameter("editAdvType"),request.getParameter("editAdvActiveFlag"));
	    response.sendRedirect(request.getContextPath() + "/wp-content/portal/manage-adv");
		}
		else if(actionCode.equals("addAdminUser")) {
			//int roleID=Integer.parseInt(request.getParameter("roleID"));
			Integer success=0;
			String userName=request.getParameter("userName");
			String userEmail=request.getParameter("userEmail");
			String userOccupation=request.getParameter("userOccupation");
			String userContactNo=request.getParameter("userContactNo");
			String userPass=request.getParameter("userPassword");
			String cofirmPassowrd=request.getParameter("userConfirmPassword");
			//String userActiveFlag=request.getParameter("userActiveFlag");
			/*RoleType roleType=dao.getUniqueRoleRow(roleID);
			roleType.getId();*/
		   adminUser.setAdminUserName(userName);
		   adminUser.setAdminUserEmail(userEmail);
		   adminUser.setAdminUserOccupation(userOccupation);
		   adminUser.setAdminUserContactNo(userContactNo);
		   adminUser.setAdminUserPassword(userPass);
		   
		   //user.setAdminActiveFlag(userActiveFlag);
		   
		   
		  success=dao.saveUser(adminUser);
		 if (success > 0) {
			 
			  
					     response.sendRedirect("wp-content/info/login.jsp");
					     
					     } 
				else{
					 response.sendRedirect("wp-content/info/register.jsp");
				     
				}
			 
		}
		else if(actionCode.equals("deleteAdminUser")) {
			  dao.deleteAdminUserData(Integer.parseInt(request.getParameter("deleteAdminUserID")));
			  response.sendRedirect(request.getContextPath() + "/wp-content/portal/manage-user");
				
			}
			
			
		else if(actionCode.equals("addLocation")) {
			int categoryID=Integer.parseInt(request.getParameter("categoryID"));
			String locationName=request.getParameter("txtLocationName");
			location.setLocationName(locationName);	
			Category category= dao.getSingleRow(categoryID);
			category.getCateID();
			location.setCategory(category);
			int temp=dao.saveLocationData(location);
			if(temp > 0) {
				writer.print("Location inserted");
			}
			else {
				writer.println("error");
			}
		}
		else if(actionCode.equals("addCategory")) {
			String categoryName=request.getParameter("categoryName");
			category.setCategoryName(categoryName);
			
			int temp=dao.saveCategoryData(category);
		    if(temp>0) {
		    	 writer.println("Inserted");
		    }
		    else {
		    	writer.println("Error");
		    }
		
		}
		else if(actionCode.equals("feedback")){
			Integer success=0;
			String feedb=request.getParameter("feedback");
			feedback.setFeedback(feedb);
			success=dao.saveFeedback(feedback);
			if(success>0)
			{
				writer.println("Feedback submitted");
				response.sendRedirect("wp-content/info/index.jsp");
			}
		}
		else if(actionCode.equals("deleteFeedback")) {
			  dao.deleteFeedbackData(Integer.parseInt(request.getParameter("deleteFeedbackID")));
			  response.sendRedirect(request.getContextPath() + "/wp-content/portal/viewFeedback.jsp");
				
			}
		else if(actionCode.equals("query")){
			Integer success=0;
			String queryName=request.getParameter("queryName");
			String queryEmail=request.getParameter("queryEmail");
			String querySubject=request.getParameter("querySubject");
			String queryDetail=request.getParameter("queryDetail");
			
			query.setQueryName(queryName);
			query.setQueryEmail(queryEmail);
			query.setQuerySubject(querySubject);
			query.setQueryDetail(queryDetail);
			
			success=dao.saveQuery(query);
			if(success>0)
			{
				response.sendRedirect("wp-content/info/contactus.jsp");
			}
		}
		else if(actionCode.equals("deleteQuery")) {
			  dao.deleteQueryData(Integer.parseInt(request.getParameter("deleteQueryID")));
			  response.sendRedirect(request.getContextPath() + "/wp-content/portal/viewQuery.jsp");
				
			}
		
		//Login
		else if(actionCode.equals("verifyLogin")) {
			
			  
				 String loginID=request.getParameter("loginID");
				 String password=request.getParameter("loginPassword");
			    ArrayList<AdminUser>adminUser=dao.login(loginID,password);
			    if(adminUser.isEmpty()) {
			    	context.setAttribute("loginError","userid or password was wrong");
			        response.sendRedirect(request.getContextPath()+"/wp-content/info/login.jsp");
			    }
			    else {
			    	Iterator<AdminUser>iterator=adminUser.iterator();
			        while (iterator.hasNext()) {
						AdminUser u = (AdminUser)iterator.next();
					/*RoleType roleType=u.getType();
						if(u.getAdminActiveFlag().equals("n") || roleType.getRoleActiveFlag().equals("n")) {
							context.setAttribute("loginError","you are blocked");*/
					        /*response.sendRedirect(request.getContextPath()+"/ecommerce-admin/login");
						}else {
							*/
							session=request.getSession();
							session.setAttribute("adminID",u.getAdminUserID());
							context.setAttribute("adminName", u.getAdminUserName());
							response.sendRedirect(request.getContextPath()+"/wp-content/info/index.jsp");
						/*}*/
			    	//response.sendRedirect(request.getContextPath()+"/");
					}
			    }
		
			
		}
		//Publisher
		else if(actionCode.equals("adminLogin")) {
			//int roleID=Integer.parseInt(request.getParameter("roleID"));
			
			Integer success=0;
			int categoryID=Integer.parseInt(request.getParameter("categoryID"));
			String txtLocationName=request.getParameter("txtLocationName");
			String duration=request.getParameter("duration");
			String size=request.getParameter("size");
			String price=request.getParameter("Price");
			String description=request.getParameter("description");
			String sellerName=request.getParameter("seller-name");
			String sellerEmail=request.getParameter("seller-email");
			String sellerPhone=request.getParameter("seller-phone");
			String sellerAddress=request.getParameter("seller-address");
			String premiumAvt=request.getParameter("premiumAvt");
			String paymentOption=request.getParameter("payment-option");
			//String userActiveFlag=request.getParameter("userActiveFlag");
			/*RoleType roleType=dao.getUniqueRoleRow(roleID);
			roleType.getId();*/
			
			Category category=dao.getSingleRow(categoryID);
			category.getCateID();
			publisher.setCategory(category);
			publisher.setTxtLocationName(txtLocationName);
			publisher.setDuration(duration);
			publisher.setSize(size);
			publisher.setPrice(price);
			publisher.setDescription(description);
			publisher.setSellerName(sellerName);
			publisher.setSellerEmail(sellerEmail);
			publisher.setSellerPhone(sellerPhone);
			publisher.setSellerAddress(sellerAddress);
			publisher.setPremiumAvt(premiumAvt);
			publisher.setPaymentOption(paymentOption);
		   
		   //user.setAdminActiveFlag(userActiveFlag);
		   
		   
		  success=dao.savePublisher(publisher);
		 if (success > 0) {
			 
			  
					     response.sendRedirect("wp-content/info/login.jsp");
					     
					     } 
				else{
					 response.sendRedirect("wp-content/info/register.jsp");
				     
				}
			 
		}
		else if(actionCode.equals("deletePublisher")) {
			  dao.deletePublisherData(Integer.parseInt(request.getParameter("deletePublisherID")));
			  response.sendRedirect(request.getContextPath() + "/wp-content/portal/viewAdvertising.jsp");
				
			}
		//search
		else if(actionCode.equals("search")) {
			
			int categoryID=Integer.parseInt(request.getParameter("categoryID"));
			if(categoryID==1){
			  response.sendRedirect(request.getContextPath() + "/wp-content/info/bus-panel.jsp");
			}
			else if(categoryID==2){
				  response.sendRedirect(request.getContextPath() + "/wp-content/info/bus-shelter.jsp");
				}
			else if(categoryID==3){
				  response.sendRedirect(request.getContextPath() + "/wp-content/info/gantries.jsp");
				}
			else if(categoryID==4){
				  response.sendRedirect(request.getContextPath() + "/wp-content/info/hoardings.jsp");
				}
			else if(categoryID==5){
				  response.sendRedirect(request.getContextPath() + "/wp-content/info/kiosks.jsp");
				}
			else if(categoryID==6){
				  response.sendRedirect(request.getContextPath() + "/wp-content/info/taxi&auto.jsp");
				}
			else{
				writer.println("Error");
			}
			}
		
		
		
			}
	
	}	
	


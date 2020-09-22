# mlops_task_2
Problem statement:-
1. Create container image that’s has Jenkins installed  using dockerfile 

2. When we launch this image, it should automatically starts Jenkins service in the container.

3. Create a job chain of job1, job2, job3 and  job4 using build pipeline plugin in Jenkins 

4.  Job1 : Pull  the Github repo automatically when some developers push repo to Github.

5.  Job2 : By looking at the code or program file, Jenkins should automatically start the respective language interpreter install image container to deploy code ( eg. If code is of  PHP, then Jenkins should start the container that has PHP already installed ).

6. Job3 : Test your app if it  is working or not.

7. Job4 : if app is not working , then send email to developer with error messages.

8. Create One extra job job5 for monitor : If container where app is running. fails due to any reson then this job should automatically start the container again.
--------------------------------------------------------------------------------
Created dockerfile for jenkins to be installed in contaijer and creating a image for the same.
Then job1 will copy the file from github into the directory.
Job2 will launch a container of html or php depending on the reqirement.
job3 will check whether page is deployed or not.
in job 4 if status code is not 200 then a mail will be send to developer for the same.
job5 will moniutor the container whether it is in running condition or not.


IN_PROC_BROWSER_TEST_F(ChromeMainTest, FirstRun) {
  base::LaunchProcess(GetCommandLine(),base::LaunchOptions());
  ASSERT_EQ(1u, chrome::GetBrowserCount(browser()->profile()));
}

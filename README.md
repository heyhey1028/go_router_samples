# Testing out StatefulShellRoute

This is a sample repository dedicated for article below regarding the use of `StatefulShellRoute`.

[link for articles]

`StatefulShellRoute` is a new feature added to `go_router` package in 2024/07, which allows us to easily implement persisted bottom navigation and persisted state of each tabs.

It'll be implemented in following steps.

1. Define `GoRouter`
2. Add `StatefulShellRoute` to it's route
3. Prepare a page with `NavigationBar` and set it as root container for `StatefulShellRoute`
4. Add `StatefulShellBranch` for each tabs
5. Add `GoRoute` for each branches
6. Set `GlobalKey<NavigatorState>` to each routes

## Sample
After a dummy signin page, sample navigates to a page implemented with `StatefulShellRoute`.

Sample consists of four tabs which holds different types of states. 

You can see how states for each tab is maintained even switching between tabs.

|signin → bottom navigation|app_bar|counter|nested navigation|scroll|
|--|--|--|--|--|
|<image src='https://github.com/heyhey1028/go_router_samples/assets/44666053/b964ca90-f419-4870-99f7-05da2296ad4b' width='200'>|<image src='https://github.com/heyhey1028/go_router_samples/assets/44666053/046b5c5e-83d3-42b0-a55e-ec19a6060cc8' width='200'>|<image src='https://github.com/heyhey1028/go_router_samples/assets/44666053/362e63c4-40fa-4023-ad1f-2b06e920d735' width='200'>|<image src='https://github.com/heyhey1028/go_router_samples/assets/44666053/d0008428-dbb3-4985-a55a-667eceb5dd45' width='200'>|<image src='https://github.com/heyhey1028/go_router_samples/assets/44666053/1a974021-050f-4342-844b-db2785846b79' width='200'>|

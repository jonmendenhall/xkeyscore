.class public interface abstract Lcom/intermedia/network/AuthedApiService;
.super Ljava/lang/Object;
.source "AuthedApiService.java"


# virtual methods
.method public abstract addReferralCode(Lcom/intermedia/model/retrofit/AddReferralBody;)Lio/reactivex/Flowable;
    .param p1    # Lcom/intermedia/model/retrofit/AddReferralBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/model/retrofit/AddReferralBody;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "users/me"
    .end annotation
.end method

.method public abstract blockUser(J)Lio/reactivex/Single;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/HQUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "blocks/{user_id}"
    .end annotation
.end method

.method public abstract deleteAvatar()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/Avatar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "users/me/avatarUrl"
    .end annotation
.end method

.method public abstract deleteFriend(J)Lio/reactivex/Single;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/intermedia/model/retrofit/envelope/DeleteFriendEnvelope;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "friends/{user_id}"
    .end annotation
.end method

.method public abstract deleteFriendRequest(J)Lio/reactivex/Single;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "friends/{user_id}/requests"
    .end annotation
.end method

.method public abstract getActiveFriends(J)Lio/reactivex/Single;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "broadcast_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/retrofit/envelope/ActiveFriendsEnvelope;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "broadcasts/{broadcast_id}/viewers/friends"
    .end annotation
.end method

.method public abstract getAdminConfig()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/config/AdminConfig;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "config/admin"
    .end annotation
.end method

.method public abstract getConfig()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/intermedia/model/config/Config;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "config"
    .end annotation
.end method

.method public abstract getFriend(J)Lio/reactivex/Single;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/intermedia/model/HQUser;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "friends/{user_id}"
    .end annotation
.end method

.method public abstract getFriendRequestFromUser(J)Lio/reactivex/Single;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/intermedia/model/FriendRequest;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "friends/{user_id}/requests/incoming"
    .end annotation
.end method

.method public abstract getFriendRequestToUser(J)Lio/reactivex/Single;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/intermedia/model/FriendRequest;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "friends/{user_id}/requests"
    .end annotation
.end method

.method public abstract getFriendRequests()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "friends/requests/incoming"
    .end annotation
.end method

.method public abstract getFriendRequests(Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "friends/requests/incoming"
    .end annotation
.end method

.method public abstract getFriends()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/retrofit/envelope/PartialUsersEnvelope;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "friends"
    .end annotation
.end method

.method public abstract getFriends(Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/retrofit/envelope/PartialUsersEnvelope;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "friends"
    .end annotation
.end method

.method public abstract getLeaderboard(I)Lio/reactivex/Single;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "mode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/retrofit/envelope/LeaderEnvelope;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/leaderboard"
    .end annotation
.end method

.method public abstract getLoginToken()Lio/reactivex/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Lretrofit2/Response<",
            "Lcom/intermedia/model/LoginTokenResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/me/token"
    .end annotation
.end method

.method public abstract getNonPlayerContacts()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/retrofit/envelope/PlayerContactsEnvelope;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "contacts/non-players"
    .end annotation
.end method

.method public abstract getPlayerContacts()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/retrofit/envelope/PlayerContactsEnvelope;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "contacts/players"
    .end annotation
.end method

.method public abstract getS3Credentials()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/AWSS3Credentials;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "credentials/s3"
    .end annotation
.end method

.method public abstract getShowsNow(Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/ShowTime;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "shows/now"
    .end annotation
.end method

.method public abstract getUser()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/HQUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/me"
    .end annotation
.end method

.method public abstract getUser(J)Lio/reactivex/Single;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/HQUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/{user_id}"
    .end annotation
.end method

.method public abstract nextSearchPage(Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/retrofit/envelope/PartialUsersEnvelope;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation
.end method

.method public abstract postContacts(Lcom/intermedia/model/retrofit/ContactsBody;)Lio/reactivex/Single;
    .param p1    # Lcom/intermedia/model/retrofit/ContactsBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/model/retrofit/ContactsBody;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "contacts"
    .end annotation
.end method

.method public abstract postDeviceToken(Lcom/intermedia/model/retrofit/DeviceTokenBody;)Lio/reactivex/Single;
    .param p1    # Lcom/intermedia/model/retrofit/DeviceTokenBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/model/retrofit/DeviceTokenBody;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/me/devices"
    .end annotation
.end method

.method public abstract searchUsers(Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "q"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/retrofit/envelope/PartialUsersEnvelope;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users"
    .end annotation
.end method

.method public abstract sendFriendRequest(J)Lio/reactivex/Single;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/FriendRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "friends/{user_id}/requests"
    .end annotation
.end method

.method public abstract updateAvatar(Lcom/intermedia/model/retrofit/AvatarBody;)Lio/reactivex/Single;
    .param p1    # Lcom/intermedia/model/retrofit/AvatarBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/model/retrofit/AvatarBody;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/Avatar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "users/me/avatarUrl"
    .end annotation
.end method

.method public abstract updateFriendRequest(JLcom/intermedia/model/retrofit/FriendStatusBody;)Lio/reactivex/Single;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/model/retrofit/FriendStatusBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/intermedia/model/retrofit/FriendStatusBody;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/FriendRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "friends/{user_id}/status"
    .end annotation
.end method

.method public abstract updateUsername(Lcom/intermedia/model/retrofit/UsernameBody;)Lio/reactivex/Single;
    .param p1    # Lcom/intermedia/model/retrofit/UsernameBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/model/retrofit/UsernameBody;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "users/me"
    .end annotation
.end method

.method public abstract usersPlaying(JLjava/lang/String;)Lio/reactivex/Single;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "broadcast_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "mode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/retrofit/envelope/ViewersEnvelope;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "broadcasts/{broadcast_id}/viewers"
    .end annotation
.end method

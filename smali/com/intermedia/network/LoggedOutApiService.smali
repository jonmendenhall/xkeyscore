.class public interface abstract Lcom/intermedia/network/LoggedOutApiService;
.super Ljava/lang/Object;
.source "LoggedOutApiService.java"


# virtual methods
.method public abstract createNewUser(Lcom/intermedia/model/retrofit/RegistrationBody;)Lio/reactivex/Maybe;
    .param p1    # Lcom/intermedia/model/retrofit/RegistrationBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/model/retrofit/RegistrationBody;",
            ")",
            "Lio/reactivex/Maybe<",
            "Lretrofit2/Response<",
            "Lcom/intermedia/model/Account;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users"
    .end annotation
.end method

.method public abstract createNewUserFirebase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Maybe;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "username"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "referringUsername"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "idToken"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Maybe<",
            "Lretrofit2/Response<",
            "Lcom/intermedia/model/Account;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users"
    .end annotation
.end method

.method public abstract getConfig()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/intermedia/model/config/LoggedOutConfig;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "config/public"
    .end annotation
.end method

.method public abstract getVerificationId(Lcom/intermedia/model/PhoneBody;)Lio/reactivex/Single;
    .param p1    # Lcom/intermedia/model/PhoneBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/model/PhoneBody;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/intermedia/model/VerificationId;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "verifications"
    .end annotation
.end method

.method public abstract postLoginToken(Lcom/intermedia/model/retrofit/LoginTokenBody;)Lio/reactivex/Single;
    .param p1    # Lcom/intermedia/model/retrofit/LoginTokenBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/model/retrofit/LoginTokenBody;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/intermedia/model/InHouseAuthResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tokens"
    .end annotation
.end method

.method public abstract postVerificationCode(Ljava/lang/String;Lcom/intermedia/model/CodeBody;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "verificationId"
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/CodeBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/intermedia/model/CodeBody;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/intermedia/model/PhoneVerificationAuthResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "verifications/{verificationId}"
    .end annotation
.end method

.method public abstract referralCodeValid(Lcom/intermedia/model/retrofit/ReferralCodeValidBody;)Lio/reactivex/Single;
    .param p1    # Lcom/intermedia/model/retrofit/ReferralCodeValidBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/model/retrofit/ReferralCodeValidBody;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/intermedia/model/ApiError;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "referral-code/valid"
    .end annotation
.end method

.method public abstract usernameAvailable(Lcom/intermedia/model/retrofit/UsernameAvailableBody;)Lio/reactivex/Single;
    .param p1    # Lcom/intermedia/model/retrofit/UsernameAvailableBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/model/retrofit/UsernameAvailableBody;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/intermedia/model/ApiError;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "usernames/available"
    .end annotation
.end method

.method public abstract usernameAvailableFirebase(Lcom/intermedia/model/retrofit/UsernameAvailableBody;)Lio/reactivex/Single;
    .param p1    # Lcom/intermedia/model/retrofit/UsernameAvailableBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/model/retrofit/UsernameAvailableBody;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/ApiError;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/usernameAvailable"
    .end annotation
.end method

.class public Lcom/intermedia/user/session/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation runtime Lcom/intermedia/injection/ApplicationScope;
.end annotation


# static fields
.field private static final SHARED_PREFS_FILE:Ljava/lang/String; = "com.intermedia.hq.session"


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private userSession:Lcom/intermedia/user/session/UserSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/user/session/SessionManager;->context:Landroid/content/Context;

    const-string v0, "com.intermedia.hq.session"

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "authToken"

    const-string v2, ""

    .line 43
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "userId"

    const-wide/16 v3, 0x0

    .line 44
    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v2, v5, v3

    const/4 v5, 0x1

    if-lez v2, :cond_0

    invoke-static {v0}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "authTokenWasCopied"

    .line 45
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v6, "accessToken"

    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "authTokenWasCopied"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "authTokenWasCopied"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    :goto_0
    new-instance v0, Lcom/intermedia/user/session/UserSession;

    const-string v2, "username"

    const-string v5, ""

    .line 53
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "userId"

    .line 54
    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v2, "isAdmin"

    .line 55
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v1, "accessToken"

    const-string v2, ""

    .line 56
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "loginToken"

    const-string v2, ""

    .line 57
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/intermedia/user/session/UserSession;-><init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/intermedia/user/session/SessionManager;->setSession(Lcom/intermedia/user/session/UserSession;)V

    return-void
.end method

.method public static getInstance()Lcom/intermedia/user/session/SessionManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 64
    invoke-static {}, Lcom/intermedia/injection/AppObjectGraph;->get()Lcom/intermedia/ApplicationComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/intermedia/ApplicationComponent;->getSessionManager()Lcom/intermedia/user/session/SessionManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/intermedia/user/session/SessionManager;->userSession:Lcom/intermedia/user/session/UserSession;

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intermedia/user/session/SessionManager;->userSession:Lcom/intermedia/user/session/UserSession;

    iget-object v0, v0, Lcom/intermedia/user/session/UserSession;->accessToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getIsAdmin()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/intermedia/user/session/SessionManager;->userSession:Lcom/intermedia/user/session/UserSession;

    iget-boolean v0, v0, Lcom/intermedia/user/session/UserSession;->isAdmin:Z

    return v0
.end method

.method public getLoginToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/intermedia/user/session/SessionManager;->userSession:Lcom/intermedia/user/session/UserSession;

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intermedia/user/session/SessionManager;->userSession:Lcom/intermedia/user/session/UserSession;

    iget-object v0, v0, Lcom/intermedia/user/session/UserSession;->loginToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/intermedia/user/session/SessionManager;->userSession:Lcom/intermedia/user/session/UserSession;

    iget-wide v0, v0, Lcom/intermedia/user/session/UserSession;->userId:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/intermedia/user/session/SessionManager;->userSession:Lcom/intermedia/user/session/UserSession;

    iget-object v0, v0, Lcom/intermedia/user/session/UserSession;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isUserLoggedIn()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/intermedia/user/session/SessionManager;->userSession:Lcom/intermedia/user/session/UserSession;

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intermedia/user/session/SessionManager;->userSession:Lcom/intermedia/user/session/UserSession;

    invoke-virtual {v0}, Lcom/intermedia/user/session/UserSession;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method resetSession()V
    .locals 1

    .line 88
    sget-object v0, Lcom/intermedia/user/session/UserSession;->EMPTY:Lcom/intermedia/user/session/UserSession;

    invoke-virtual {p0, v0}, Lcom/intermedia/user/session/SessionManager;->setSession(Lcom/intermedia/user/session/UserSession;)V

    return-void
.end method

.method public setLoginToken(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/intermedia/user/session/SessionManager;->context:Landroid/content/Context;

    const-string v1, "com.intermedia.hq.session"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "loginToken"

    .line 103
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSession(Lcom/intermedia/model/InHouseAuthResponse;)V
    .locals 8
    .param p1    # Lcom/intermedia/model/InHouseAuthResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    new-instance v7, Lcom/intermedia/user/session/UserSession;

    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->username()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->userId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->admin()Z

    move-result v4

    .line 84
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->accessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->loginToken()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/intermedia/user/session/UserSession;-><init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v7}, Lcom/intermedia/user/session/SessionManager;->setSession(Lcom/intermedia/user/session/UserSession;)V

    return-void
.end method

.method public setSession(Lcom/intermedia/user/session/UserSession;)V
    .locals 4
    .param p1    # Lcom/intermedia/user/session/UserSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    invoke-static {p1}, Lcom/intermedia/util/Asserts;->isNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Lcom/intermedia/user/session/SessionManager;->userSession:Lcom/intermedia/user/session/UserSession;

    .line 70
    iget-object v0, p0, Lcom/intermedia/user/session/SessionManager;->context:Landroid/content/Context;

    const-string v1, "com.intermedia.hq.session"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "username"

    iget-object v2, p1, Lcom/intermedia/user/session/UserSession;->userName:Ljava/lang/String;

    .line 71
    invoke-static {v2}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accessToken"

    iget-object v2, p1, Lcom/intermedia/user/session/UserSession;->accessToken:Ljava/lang/String;

    .line 72
    invoke-static {v2}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "loginToken"

    iget-object v2, p1, Lcom/intermedia/user/session/UserSession;->loginToken:Ljava/lang/String;

    .line 73
    invoke-static {v2}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userId"

    iget-wide v2, p1, Lcom/intermedia/user/session/UserSession;->userId:J

    .line 74
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isAdmin"

    iget-boolean p1, p1, Lcom/intermedia/user/session/UserSession;->isAdmin:Z

    .line 75
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    invoke-static {}, Lcom/intermedia/injection/UserObjectGraph;->build()V

    return-void
.end method

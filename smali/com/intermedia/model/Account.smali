.class public Lcom/intermedia/model/Account;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field public accessToken:Ljava/lang/String;

.field private admin:Ljava/lang/Boolean;

.field private avatarUrl:Ljava/lang/String;

.field private loginToken:Ljava/lang/String;

.field private tester:Ljava/lang/Boolean;

.field private userId:J

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    instance-of p1, p1, Lcom/intermedia/model/Account;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 18
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/Account;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/Account;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/Account;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getUserId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/Account;->getUserId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Account;->getUsername()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getAdmin()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Account;->getAdmin()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_1
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getTester()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Account;->getTester()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_2
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Account;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_3
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getLoginToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Account;->getLoginToken()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_c

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_4
    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Account;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_e

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_e
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    :goto_5
    return v2

    :cond_f
    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/intermedia/model/Account;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAdmin()Ljava/lang/Boolean;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/intermedia/model/Account;->admin:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/intermedia/model/Account;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginToken()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/intermedia/model/Account;->loginToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTester()Ljava/lang/Boolean;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/intermedia/model/Account;->tester:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/intermedia/model/Account;->userId:J

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/intermedia/model/Account;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 18
    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getUserId()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getUsername()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getAdmin()Ljava/lang/Boolean;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getTester()Ljava/lang/Boolean;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getLoginToken()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/intermedia/model/Account;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setAdmin(Ljava/lang/Boolean;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/intermedia/model/Account;->admin:Ljava/lang/Boolean;

    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/intermedia/model/Account;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setLoginToken(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/intermedia/model/Account;->loginToken:Ljava/lang/String;

    return-void
.end method

.method public setTester(Ljava/lang/Boolean;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/intermedia/model/Account;->tester:Ljava/lang/Boolean;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/intermedia/model/Account;->userId:J

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/intermedia/model/Account;->username:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", admin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getAdmin()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tester="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getTester()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loginToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getLoginToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Account;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

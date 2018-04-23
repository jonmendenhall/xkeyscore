.class public Lcom/intermedia/model/PhoneVerificationAuthResponse;
.super Ljava/lang/Object;
.source "PhoneVerificationAuthResponse.java"


# instance fields
.field final auth:Lcom/intermedia/model/InHouseAuthResponse;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/intermedia/model/InHouseAuthResponse;)V
    .locals 0
    .param p1    # Lcom/intermedia/model/InHouseAuthResponse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/model/PhoneVerificationAuthResponse;->auth:Lcom/intermedia/model/InHouseAuthResponse;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    instance-of p1, p1, Lcom/intermedia/model/PhoneVerificationAuthResponse;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/PhoneVerificationAuthResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/PhoneVerificationAuthResponse;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/PhoneVerificationAuthResponse;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/PhoneVerificationAuthResponse;->getAuth()Lcom/intermedia/model/InHouseAuthResponse;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/PhoneVerificationAuthResponse;->getAuth()Lcom/intermedia/model/InHouseAuthResponse;

    move-result-object p1

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public getAuth()Lcom/intermedia/model/InHouseAuthResponse;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/intermedia/model/PhoneVerificationAuthResponse;->auth:Lcom/intermedia/model/InHouseAuthResponse;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/intermedia/model/PhoneVerificationAuthResponse;->getAuth()Lcom/intermedia/model/InHouseAuthResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneVerificationAuthResponse(auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/PhoneVerificationAuthResponse;->getAuth()Lcom/intermedia/model/InHouseAuthResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

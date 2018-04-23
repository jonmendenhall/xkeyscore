.class public Lcom/amazonaws/services/s3/model/CanonicalGrantee;
.super Ljava/lang/Object;
.source "CanonicalGrantee.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/Grantee;
.implements Ljava/io/Serializable;


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->displayName:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->setIdentifier(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 109
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    if-eqz v0, :cond_0

    .line 110
    check-cast p1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    return-void
.end method

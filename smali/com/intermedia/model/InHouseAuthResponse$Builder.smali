.class public abstract Lcom/intermedia/model/InHouseAuthResponse$Builder;
.super Ljava/lang/Object;
.source "InHouseAuthResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/InHouseAuthResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract accessToken(Ljava/lang/String;)Lcom/intermedia/model/InHouseAuthResponse$Builder;
.end method

.method public abstract admin(Z)Lcom/intermedia/model/InHouseAuthResponse$Builder;
.end method

.method public abstract avatarUrl(Ljava/lang/String;)Lcom/intermedia/model/InHouseAuthResponse$Builder;
.end method

.method public abstract build()Lcom/intermedia/model/InHouseAuthResponse;
.end method

.method public abstract guest(Z)Lcom/intermedia/model/InHouseAuthResponse$Builder;
.end method

.method public abstract loginToken(Ljava/lang/String;)Lcom/intermedia/model/InHouseAuthResponse$Builder;
.end method

.method public abstract tester(Z)Lcom/intermedia/model/InHouseAuthResponse$Builder;
.end method

.method public abstract userId(J)Lcom/intermedia/model/InHouseAuthResponse$Builder;
.end method

.method public abstract username(Ljava/lang/String;)Lcom/intermedia/model/InHouseAuthResponse$Builder;
.end method

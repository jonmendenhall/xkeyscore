.class public abstract Lcom/intermedia/model/PartialUser$Builder;
.super Ljava/lang/Object;
.source "PartialUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/PartialUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract avatarUrl(Ljava/lang/String;)Lcom/intermedia/model/PartialUser$Builder;
.end method

.method public abstract build()Lcom/intermedia/model/PartialUser;
.end method

.method public abstract userId(J)Lcom/intermedia/model/PartialUser$Builder;
.end method

.method public abstract username(Ljava/lang/String;)Lcom/intermedia/model/PartialUser$Builder;
.end method

.class public abstract Lcom/intermedia/model/ViewerUpdateUser$Builder;
.super Ljava/lang/Object;
.source "ViewerUpdateUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/ViewerUpdateUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract avatarUrl(Ljava/lang/String;)Lcom/intermedia/model/ViewerUpdateUser$Builder;
.end method

.method public abstract build()Lcom/intermedia/model/ViewerUpdateUser;
.end method

.method public abstract userId(J)Lcom/intermedia/model/ViewerUpdateUser$Builder;
.end method

.method public abstract username(Ljava/lang/String;)Lcom/intermedia/model/ViewerUpdateUser$Builder;
.end method

.method public abstract viewerState(Ljava/lang/String;)Lcom/intermedia/model/ViewerUpdateUser$Builder;
.end method

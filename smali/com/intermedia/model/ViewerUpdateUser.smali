.class public abstract Lcom/intermedia/model/ViewerUpdateUser;
.super Ljava/lang/Object;
.source "ViewerUpdateUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/ViewerUpdateUser$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/ViewerUpdateUser$Builder;
    .locals 1

    .line 28
    new-instance v0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract avatarUrl()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract userId()J
.end method

.method public abstract username()Ljava/lang/String;
.end method

.method public abstract viewerState()Ljava/lang/String;
.end method

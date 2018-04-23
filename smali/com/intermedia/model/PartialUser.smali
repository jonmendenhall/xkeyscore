.class public abstract Lcom/intermedia/model/PartialUser;
.super Ljava/lang/Object;
.source "PartialUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/PartialUser$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/PartialUser$Builder;
    .locals 1

    .line 26
    new-instance v0, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;-><init>()V

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

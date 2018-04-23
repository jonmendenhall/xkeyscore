.class public abstract Lcom/intermedia/model/PlayerContact;
.super Ljava/lang/Object;
.source "PlayerContact.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/PlayerContact$Builder;,
        Lcom/intermedia/model/PlayerContact$Status;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/PlayerContact$Builder;
    .locals 1

    .line 30
    new-instance v0, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract status()Lcom/intermedia/model/PlayerContact$Status;
.end method

.method public abstract toBuilder()Lcom/intermedia/model/PlayerContact$Builder;
.end method

.method public abstract user()Lcom/intermedia/model/PartialUser;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract uuid()Ljava/lang/String;
.end method

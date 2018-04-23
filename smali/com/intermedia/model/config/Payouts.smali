.class public abstract Lcom/intermedia/model/config/Payouts;
.super Ljava/lang/Object;
.source "Payouts.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/Payouts$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/config/Payouts$Builder;
    .locals 2

    .line 26
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->active(Z)Lcom/intermedia/model/config/Payouts$Builder;

    move-result-object v0

    const-string v1, "live"

    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/Payouts$Builder;->mode(Ljava/lang/String;)Lcom/intermedia/model/config/Payouts$Builder;

    move-result-object v0

    const-string v1, "$0.01"

    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/Payouts$Builder;->threshold(Ljava/lang/String;)Lcom/intermedia/model/config/Payouts$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract active()Z
.end method

.method public abstract mode()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract threshold()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract toBuilder()Lcom/intermedia/model/config/Payouts$Builder;
.end method

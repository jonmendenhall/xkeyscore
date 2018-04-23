.class public abstract Lcom/intermedia/model/VerificationId;
.super Ljava/lang/Object;
.source "VerificationId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/VerificationId$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/VerificationId$Builder;
    .locals 1

    .line 31
    new-instance v0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract callsEnabled()Z
.end method

.method public abstract expires()Ljava/util/Date;
.end method

.method public abstract phone()Ljava/lang/String;
.end method

.method public abstract retrySeconds()J
.end method

.method public abstract toBuilder()Lcom/intermedia/model/VerificationId$Builder;
.end method

.method public abstract verificationId()Ljava/lang/String;
.end method

.class public abstract Lcom/intermedia/model/retrofit/envelope/DeleteFriendEnvelope;
.super Ljava/lang/Object;
.source "DeleteFriendEnvelope.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Z)Lcom/intermedia/model/retrofit/envelope/DeleteFriendEnvelope;
    .locals 1

    .line 15
    new-instance v0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;

    invoke-direct {v0, p0}, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public abstract result()Z
.end method

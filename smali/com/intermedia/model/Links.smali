.class public abstract Lcom/intermedia/model/Links;
.super Ljava/lang/Object;
.source "Links.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/Links$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/Links$Builder;
    .locals 1

    .line 25
    new-instance v0, Lcom/intermedia/model/AutoParcel_Links$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_Links$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract next()Ljava/lang/String;
.end method

.method public abstract prev()Ljava/lang/String;
.end method

.method public abstract self()Ljava/lang/String;
.end method

.method public abstract toBuilder()Lcom/intermedia/model/Links$Builder;
.end method

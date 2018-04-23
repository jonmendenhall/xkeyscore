.class public abstract Lcom/intermedia/model/retrofit/envelope/PartialUsersEnvelope;
.super Ljava/lang/Object;
.source "PartialUsersEnvelope.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;Lcom/intermedia/model/Links;)Lcom/intermedia/model/retrofit/envelope/PartialUsersEnvelope;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/intermedia/model/Links;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/intermedia/model/PartialUser;",
            ">;",
            "Lcom/intermedia/model/Links;",
            ")",
            "Lcom/intermedia/model/retrofit/envelope/PartialUsersEnvelope;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_PartialUsersEnvelope;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/model/retrofit/envelope/AutoParcel_PartialUsersEnvelope;-><init>(Ljava/util/List;Lcom/intermedia/model/Links;)V

    return-object v0
.end method


# virtual methods
.method public abstract data()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/intermedia/model/PartialUser;",
            ">;"
        }
    .end annotation
.end method

.method public abstract links()Lcom/intermedia/model/Links;
.end method

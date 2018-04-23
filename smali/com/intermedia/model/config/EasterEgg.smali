.class abstract Lcom/intermedia/model/config/EasterEgg;
.super Ljava/lang/Object;
.source "EasterEgg.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/EasterEgg$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/config/EasterEgg$Builder;
    .locals 3

    .line 23
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;->enabled(Z)Lcom/intermedia/model/config/EasterEgg$Builder;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Lcom/intermedia/model/config/EasterEgg$Builder;->interval(J)Lcom/intermedia/model/config/EasterEgg$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract enabled()Z
.end method

.method public abstract interval()J
.end method

.method public abstract toBuilder()Lcom/intermedia/model/config/EasterEgg$Builder;
.end method

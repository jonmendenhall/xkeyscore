.class final Lcom/google/android/gms/internal/zzehj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehq<",
        "Lcom/google/android/gms/internal/zzehe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzbs(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzehe;

    invoke-static {}, Lcom/google/android/gms/internal/zzehf;->zzbxv()Lcom/google/android/gms/internal/zzehq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzehq;->zzbs(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class final Lcom/google/android/gms/internal/zzeda;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehp<",
        "Lcom/google/android/gms/internal/zzekd;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzmrw:Ljava/util/Map;

.field private synthetic zzmrx:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzecy;Ljava/util/Map;Z)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeda;->zzmrw:Ljava/util/Map;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzeda;->zzmrx:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/zzekd;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzeda;->zzmrw:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwf()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeda;->zzmrx:Z

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzekd;->getValue(Z)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

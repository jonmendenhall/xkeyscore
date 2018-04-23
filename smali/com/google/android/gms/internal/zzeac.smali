.class final Lcom/google/android/gms/internal/zzeac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehp<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzmlu:Lcom/google/android/gms/internal/zzehm;

.field private synthetic zzmlv:Ljava/util/List;

.field private synthetic zzmlw:Lcom/google/android/gms/internal/zzedk;

.field private synthetic zzmlx:Lcom/google/android/gms/internal/zzekd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeaa;Lcom/google/android/gms/internal/zzehm;Ljava/util/List;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeac;->zzmlu:Lcom/google/android/gms/internal/zzehm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeac;->zzmlv:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzeac;->zzmlw:Lcom/google/android/gms/internal/zzedk;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzeac;->zzmlx:Lcom/google/android/gms/internal/zzekd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeac;->zzmlu:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeac;->zzmlv:Ljava/util/List;

    new-instance p3, Lcom/google/android/gms/internal/zzelq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeac;->zzmlw:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzedk;->zzh(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeac;->zzmlx:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/google/android/gms/internal/zzelq;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

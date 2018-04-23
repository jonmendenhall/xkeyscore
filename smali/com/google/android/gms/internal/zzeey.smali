.class final Lcom/google/android/gms/internal/zzeey;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeff;


# instance fields
.field private synthetic zzmvd:Lcom/google/android/gms/internal/zzefb;

.field private synthetic zzmve:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefb;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmvd:Lcom/google/android/gms/internal/zzefb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeey;->zzmve:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmvd:Lcom/google/android/gms/internal/zzefb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeey;->zzmve:Ljava/util/Map;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/zzeex;->zza(Lcom/google/android/gms/internal/zzekd;Ljava/util/Map;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzefb;->zzh(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/zzefc;
.super Lcom/google/android/gms/internal/zzejl;


# instance fields
.field private synthetic zzmrv:Lcom/google/android/gms/internal/zzedk;

.field private synthetic zzmvj:Lcom/google/android/gms/internal/zzefb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefb;Lcom/google/android/gms/internal/zzedk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefc;->zzmvj:Lcom/google/android/gms/internal/zzefb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefc;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejl;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefc;->zzmvj:Lcom/google/android/gms/internal/zzefb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefc;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzefb;->zzh(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    return-void
.end method

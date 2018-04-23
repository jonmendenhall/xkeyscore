.class final Lcom/google/android/gms/internal/zzedq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzece;


# instance fields
.field private synthetic zzmrv:Lcom/google/android/gms/internal/zzedk;

.field private synthetic zzmti:Lcom/google/android/gms/internal/zzedn;

.field private synthetic zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedq;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzedq;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzedq;->zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzedn;->zzbf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzedq;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzedn;->zzf(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzefb;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedq;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzefb;->zzq(Lcom/google/android/gms/internal/zzedk;)Z

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzedq;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedq;->zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedq;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzedk;)V

    return-void
.end method
